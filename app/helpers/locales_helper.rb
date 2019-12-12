module LocalesHelper
    def v_t(var)
        t('view.' + params[:controller] + '.' + params[:action] + '.' + var)
    end
    
    def ar_t(var)
        t('activerecord.attributes.' + var)
    end

    def c_t(var)
        t('controller.' + params[:controller] + '.' +var)
    end
end