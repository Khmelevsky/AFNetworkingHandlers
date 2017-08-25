//
//  AFHTTPSessionManager.swift
//
//  Created by Alexandr Khmelevsky on 10/19/16.
//  Copyright © 2016 Alexandr Khmelevsky. All rights reserved.
//

import Foundation
import AFNetworking

extension AFHTTPSessionManager {
    
    @available(*, deprecated, message: "Use RequestManager")
    public func builder(withUrlString url: String, clouser:(Configurator) -> Swift.Void) -> RequestBuilder {
        let configurator = AFHTTPDefaultConfigurator(urlString: url)
        clouser(configurator)
        return RequestBuilder(manager: self, configurator: configurator)
    }
    
    @available(*, deprecated, message: "Use RequestManager")
    public func builder(withConfigurator configurator:Configurator) -> RequestBuilder {
        return RequestBuilder(manager: self, configurator: configurator)
    }
    
}
