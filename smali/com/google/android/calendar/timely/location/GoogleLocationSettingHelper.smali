.class public Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;
.super Ljava/lang/Object;
.source "GoogleLocationSettingHelper.java"


# static fields
.field private static final GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static final UNSUPPORTED_COUNTRY_CODES_FOR_LOCATION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "content://com.google.settings/partner"

    .line 43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    .line 48
    const-string v0, "kr"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->UNSUPPORTED_COUNTRY_CODES_FOR_LOCATION:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUseLocationForServices(Landroid/content/Context;)I
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "use_location_for_services"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 78
    :cond_0
    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_1
    :goto_0
    if-nez v7, :cond_3

    .line 91
    :goto_1
    return v6

    .line 75
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 76
    :goto_2
    :try_start_2
    sget-object v2, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get \'Use My Location\' setting"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_2

    .line 79
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 87
    :cond_3
    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    :goto_4
    move v6, v0

    .line 91
    goto :goto_1

    .line 88
    :catch_1
    move-exception v0

    move v0, v6

    .line 89
    goto :goto_4

    .line 78
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 75
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public static isEnforceable(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gsf.GOOGLE_APPS_LOCATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGoogleLocationServicesEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    invoke-static {p0}, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->isLocationSupportedInCountry(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->isEnforceable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-static {p0}, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isLocationSupportedInCountry(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 113
    invoke-static {p0}, Lcom/google/android/calendar/extensions/CountryDetector;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    sget-object v1, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->UNSUPPORTED_COUNTRY_CODES_FOR_LOCATION:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
