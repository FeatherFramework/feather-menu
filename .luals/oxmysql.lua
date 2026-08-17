---@meta

-- oxmysql (overextended/oxmysql) -- every server_scripts manifest in this
-- framework pulls in `@oxmysql/lib/MySQL.lua`, which defines this global at
-- runtime. It lives in a separate resource, so LuaLS can't see its
-- definition from inside this repo without this stub. Only `.await` methods
-- are currently used in this codebase (verified by grep); the rest of
-- oxmysql's documented API is included for completeness since this file's
-- only job is describing an external library's shape.

---@class MySQLQueryResult
---@field affectedRows number
---@field insertId number

MySQL = {}

---@param query string
---@param parameters? table
---@param cb? fun(result: table)
MySQL.query = function(query, parameters, cb) end
---@param query string
---@param parameters? table
---@return table
MySQL.query.await = function(query, parameters) end

---@param query string
---@param parameters? table
---@param cb? fun(result: table)
MySQL.single = function(query, parameters, cb) end
---@param query string
---@param parameters? table
---@return table|nil
MySQL.single.await = function(query, parameters) end

---@param query string
---@param parameters? table
---@param cb? fun(result: any)
MySQL.scalar = function(query, parameters, cb) end
---@param query string
---@param parameters? table
---@return any
MySQL.scalar.await = function(query, parameters) end

---@param query string
---@param parameters? table
---@param cb? fun(insertId: number)
MySQL.insert = function(query, parameters, cb) end
---@param query string
---@param parameters? table
---@return number insertId
MySQL.insert.await = function(query, parameters) end

---@param query string
---@param parameters? table
---@param cb? fun(affectedRows: number)
MySQL.update = function(query, parameters, cb) end
---@param query string
---@param parameters? table
---@return number affectedRows
MySQL.update.await = function(query, parameters) end

---@param query string
---@param parameters? table
---@param cb? fun(affectedRows: number)
MySQL.rawExecute = function(query, parameters, cb) end
---@param query string
---@param parameters? table
MySQL.rawExecute.await = function(query, parameters) end

---@param queries table
---@param cb? fun(success: boolean)
MySQL.transaction = function(queries, cb) end
---@param queries table
---@return boolean
MySQL.transaction.await = function(queries) end

---@param cb fun()
MySQL.ready = function(cb) end
