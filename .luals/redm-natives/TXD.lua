---@meta

-- RDR3 namespace: TXD -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- DOES_STREAMED_TEXTURE_DICT_EXIST  (0x7332461FC59EB7EC)
-- min build: 1207
---@param textureDict string
---@return boolean
function DoesStreamedTextureDictExist(textureDict) end

-- DOES_STREAMED_TXD_EXIST  (0xBA0163B277C2D2D0)
-- min build: 1207
---@param txdHash number
---@return boolean
function DoesStreamedTxdExist(txdHash) end

-- HAS_STREAMED_TEXTURE_DICT_LOADED  (0x54D6900929CCF162)
-- min build: 1207
---@param textureDict string
---@return boolean
function HasStreamedTextureDictLoaded(textureDict) end

-- HAS_STREAMED_TXD_LOADED  (0xBE72591D1509FFE4)
-- min build: 1207
---@param txdHash number
---@return boolean
function HasStreamedTxdLoaded(txdHash) end

-- REQUEST_STREAMED_TEXTURE_DICT  (0xC1BA29DF5631B0F8)
-- min build: 1207
---@param textureDict string
---@param p1 boolean
function RequestStreamedTextureDict(textureDict, p1) end

-- REQUEST_STREAMED_TXD  (0xDB1BD07FB464584D)
-- min build: 1207
---@param txdHash number
---@param p1 boolean
function RequestStreamedTxd(txdHash, p1) end

-- SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED  (0x4ACA10A91F66F1E2)
-- min build: 1207
---@param textureDict string
function SetStreamedTextureDictAsNoLongerNeeded(textureDict) end

-- SET_STREAMED_TXD_AS_NO_LONGER_NEEDED  (0x8232F37DF762ACB2)
-- min build: 1207
---@param txdHash number
function SetStreamedTxdAsNoLongerNeeded(txdHash) end
