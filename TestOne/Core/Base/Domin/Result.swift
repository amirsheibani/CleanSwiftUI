class Result<T>{
    var data: T?
    var message: String?
    var status: Int?
    var error: Error?
    init(data: T?, message: String?, status: Int?,error: Error?) {
        self.data = data
        self.message = message
        self.status = status
    }
}

class ResultSuccess<T>: Result<T> {
    init(data: T?, message: String?, status: Int?) {
        super.init(data: data, message: message, status: status,error: nil)
    }
}

class ResultFailure<T>: Result<T> {
    init(error: Error?, message: String?, status: Int?) {
        super.init(data: nil, message: message, status: status,error:error)
    }
}
