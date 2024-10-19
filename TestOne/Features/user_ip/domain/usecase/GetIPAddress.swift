class GetIPAddressUseCase : BaseUseCaseNoArgs{
    
    typealias R = Result<IPEntity>
    
    let iPAddressRepository: IPAddressRepository
    init(iPAddressRepository: IPAddressRepository) {
        self.iPAddressRepository = iPAddressRepository
    }
    
    func call() async -> Result<IPEntity> {
        return await iPAddressRepository.getIPAddress()
    }
    
    
}
