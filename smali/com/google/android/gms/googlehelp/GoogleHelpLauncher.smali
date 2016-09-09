.class public Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;
.super Ljava/lang/Object;


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field private final mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/googlehelp/zzc;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private zzt(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public handlePlayServicesUnavailable(ILandroid/content/Intent;)V
    .locals 3

    const-string v0, "EXTRA_GOOGLE_HELP"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/googlehelp/GoogleHelp;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/googlehelp/GoogleHelp;->getFallbackSupportUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->zzt(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;I)Z

    goto :goto_0
.end method

.method public isGooglePlayServicesAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public launch(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->validateHelpIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->isGooglePlayServicesAvailable()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->launchGoogleHelp(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->handlePlayServicesUnavailable(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public launchGoogleHelp(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher$1;-><init>(Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/googlehelp/zzc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/googlehelp/zzc$zza;)V

    return-void
.end method

.method public validateHelpIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.googlehelp.HELP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EXTRA_GOOGLE_HELP"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The intent you are trying to launch is not GoogleHelp intent! This class only supports GoogleHelp intents."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
