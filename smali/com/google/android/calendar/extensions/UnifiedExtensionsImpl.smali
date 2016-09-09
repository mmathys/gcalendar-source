.class public Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;
.super Ljava/lang/Object;
.source "UnifiedExtensionsImpl.java"

# interfaces
.implements Lcom/android/calendar/UnifiedExtensions;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfidentialityDialog:Lcom/google/android/calendar/timely/ConfidentialityDialog;

.field private mWhatsNewFactory:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/android/calendarcommon2/LogUtils;->buildPreventsDebugLogging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly configured release build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    return-void
.end method

.method private getConfidentialityDialog()Lcom/google/android/calendar/timely/ConfidentialityDialog;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->mConfidentialityDialog:Lcom/google/android/calendar/timely/ConfidentialityDialog;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/google/android/calendar/timely/ConfidentialityDialog;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/ConfidentialityDialog;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->mConfidentialityDialog:Lcom/google/android/calendar/timely/ConfidentialityDialog;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->mConfidentialityDialog:Lcom/google/android/calendar/timely/ConfidentialityDialog;

    return-object v0
.end method


# virtual methods
.method public configureStrictMode()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 83
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 85
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 87
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 91
    return-void
.end method

.method public getIcalActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const-class v0, Lcom/google/android/calendar/ical/ICalActivity;

    return-object v0
.end method

.method public getSettingsActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/calendar/timely/settings/CalendarSettingsActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    const-class v0, Lcom/google/android/calendar/settings/GoogleCalendarSettingsActivity;

    return-object v0
.end method

.method public bridge synthetic getWhatsNew()Lcom/android/calendar/WhatsNewFactory;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->getWhatsNew()Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public getWhatsNew()Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->mWhatsNewFactory:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->mWhatsNewFactory:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->mWhatsNewFactory:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    return-object v0
.end method

.method public handleMagicSearch(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onApplicationStart(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/android/calendar/PerformanceMetricCollector;->start(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public showPreDialog(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->getConfidentialityDialog()Lcom/google/android/calendar/timely/ConfidentialityDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/timely/ConfidentialityDialog;->showDialog(Landroid/app/Activity;)V

    .line 96
    return-void
.end method

.method public showSmartProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/calendar/timely/ContactInfo;)V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p3, Lcom/android/calendar/timely/ContactInfo;->mContactId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p3, Lcom/android/calendar/timely/ContactInfo;->mContactId:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    new-instance v1, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;-><init>()V

    const/16 v2, 0x8b

    .line 128
    invoke-virtual {v1, v2}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->setApplicationId(I)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->setQualifiedId(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/calendar/timely/ContactInfo;->mName:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p2}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->setViewerAccountName(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 133
    :goto_1
    return-void

    .line 117
    :cond_0
    iget-object v0, p3, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    const-string v1, "e:"

    iget-object v0, p3, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p3, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 120
    const-string v1, "f:"

    iget-object v0, p3, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_4
    sget-object v1, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t show SmartProfile for contact info without primary email, contact id and focus id. ContactInfo: "

    .line 124
    invoke-virtual {p3}, Lcom/android/calendar/timely/ContactInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 122
    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 124
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public showSmartProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;-><init>()V

    const/16 v1, 0x8b

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->setApplicationId(I)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->fullName:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p2}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->setViewerAccountName(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    move-result-object v1

    .line 141
    iget-object v0, p3, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    const-string v2, "e:"

    iget-object v0, p3, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->setQualifiedId(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    .line 151
    :goto_1
    iget-object v0, p3, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->photoURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p3, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->photoURL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->setAvatarUrl(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    .line 154
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 155
    :goto_2
    return-void

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-boolean v0, p3, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isGPlusUser:Z

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->profileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 144
    const-string v2, "g:"

    iget-object v0, p3, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->profileId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->setQualifiedId(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 146
    :cond_4
    sget-object v1, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t show SmartProfile for birthday info without email and gaia id.BirthdayInfo: "

    .line 148
    invoke-virtual {p3}, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 146
    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 148
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method
