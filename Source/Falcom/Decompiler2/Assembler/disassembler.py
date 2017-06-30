from Common             import *
from .instruction       import *
from .instruction_table import *
from .function          import *

__all__ = (
    'Disassembler',
    'DisassembleInfo',
)

class DisassembleInfo:
    def __init__(self, fs: fileio.FileStream):
        self.fs     = fs    # type: fileio.FileStream

class Disassembler:
    def __init__(self, instructionTable: InstructionTable):
        self.instructionTable   = instructionTable      # type: InstructionTable
        self.disassembledBlocks = {}                    # type: Dict[int, CodeBlock]

    def disasmFunction(self, info: DisassembleInfo) -> Function:
        fun = Function()

        fun.offset = info.fs.Position
        fun.blocks = self.disasmBlock(info)

        return fun

    def disasmBlock(self, info: DisassembleInfo) -> CodeBlock:
        offset = info.fs.Position
        block = self.disassembledBlocks.get(offset)

        if block is not None:
            return block

        block = CodeBlock(instructions = [])
        block.offset = offset

        self.disassembledBlocks[offset] = block

        while True:
            inst = self.disasmInstruction(info)

            block.instructions.append(inst)

            if not inst.flags.startBlock and not inst.flags.endBlock:
                continue

            for index, branch in enumerate(inst.branches):
                pos = info.fs.Position

                info.fs.Position = branch.offset
                inst.branches[index] = self.disasmBlock(info)

                info.fs.Position = pos

            if inst.flags.endBlock:
                break

        return block

    def disasmInstruction(self, info: DisassembleInfo) -> Instruction:
        pos     = info.fs.Position
        opcode  = self.instructionTable.readOpCode(info.fs)
        desc    = self.instructionTable.getDescriptor(opcode)

        handlerInfo = InstructionHandlerInfo(InstructionHandlerInfo.Action.Disassemble, desc, info)
        handlerInfo.offset = pos

        inst = (desc.handler or self.defaultInstructionParser)(handlerInfo)

        if inst is None:
            raise Exception('disasmInstruction %02X @ %08X failed' % (opcode, pos))

        inst.descriptor = inst.descriptor if inst.descriptor is None else desc
        inst.flags = inst.descriptor.flags if inst.flags is None else inst.flags

        return inst

    def defaultInstructionParser(self, info: InstructionHandlerInfo) -> Instruction:
        fs      = info.disasmInfo.fs
        desc    = info.descriptor

        inst = Instruction(desc.opcode)

        inst.offset     = info.offset
        inst.operands   = [self.instructionTable.readOperand(fs, oprdesc) for oprdesc in (desc.operands or [])]
        inst.size       = fs.Position - inst.offset
        inst.descriptor = desc
        inst.flags      = desc.flags

        return inst
