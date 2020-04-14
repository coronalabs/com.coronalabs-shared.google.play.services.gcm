local metadata =
{
    plugin =
    {
        format = 'jar',
        manifest = 
        {
            permissions = {},
            usesPermissions = {
                -- From play-services-gcm package
                "com.google.android.c2dm.permission.RECEIVE",
                "android.permission.INTERNET",
            },
            usesFeatures = {},
            applicationChildElements = 
            {
                -- Meta-data for base logic layer
                [[
                <meta-data android:name="usesGooglePlayServicesComponentGCM" android:value="true" />
                ]],
            },
        }
    },
    coronaManifest = {
        dependencies = {
            ["shared.google.play.services.base"] = "com.coronalabs",
        },
    },
}

return metadata
