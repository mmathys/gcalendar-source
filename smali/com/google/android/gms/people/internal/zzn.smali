.class public Lcom/google/android/gms/people/internal/zzn;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/internal/zzn$zzq;,
        Lcom/google/android/gms/people/internal/zzn$zzp;,
        Lcom/google/android/gms/people/internal/zzn$zzah;,
        Lcom/google/android/gms/people/internal/zzn$zzab;,
        Lcom/google/android/gms/people/internal/zzn$zzb;,
        Lcom/google/android/gms/people/internal/zzn$zzo;,
        Lcom/google/android/gms/people/internal/zzn$zze;,
        Lcom/google/android/gms/people/internal/zzn$zzt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/people/internal/zzg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbpu:Landroid/os/Bundle;

.field private static volatile zzbpv:Landroid/os/Bundle;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final zzQu:Ljava/lang/String;

.field public final zzbps:Ljava/lang/String;

.field private final zzbpt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/people/Notifications$OnDataChanged;",
            "Lcom/google/android/gms/people/internal/zzn$zzt;",
            ">;"
        }
    .end annotation
.end field

.field private zzbpw:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x5

    move-object v0, p0

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/internal/zzn;->zzbpt:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/people/internal/zzn;->zzbpw:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/people/internal/zzn;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/people/internal/zzn;->zzbps:Ljava/lang/String;

    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/zzf;->zzov()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/internal/zzn;->zzQu:Ljava/lang/String;

    return-void
.end method

.method private static zzN(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pendingIntent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method private static zza(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcom/google/android/gms/people/internal/zzn;->zzN(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method static synthetic zzb(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/internal/zzn;->zza(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .locals 8

    iget-object v6, p0, Lcom/google/android/gms/people/internal/zzn;->zzbpt:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/zzn;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/internal/zzn;->zzbpt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/internal/zzn$zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/people/internal/zzn$zzt;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/zzn;->zzEK()Lcom/google/android/gms/people/internal/zzg;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/people/internal/zzg;->zza(Lcom/google/android/gms/people/internal/zzf;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "PeopleClient"

    const-string v2, "Failed to unregister listener"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/people/internal/zzo;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "PeopleClient"

    const-string v2, "PeopleService is in unexpected state"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/people/internal/zzo;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/internal/zzn;->zzbpt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->disconnect()V

    return-void
.end method

.method protected zzEK()Lcom/google/android/gms/people/internal/zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/internal/zzg;

    return-object v0
.end method

.method public declared-synchronized zzM(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "use_contactables_api"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/people/internal/agg/zzd;->zzaL(Z)V

    sget-object v0, Lcom/google/android/gms/people/internal/zzm;->zzbpp:Lcom/google/android/gms/people/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/people/internal/zzm;->zzL(Landroid/os/Bundle;)V

    const-string v0, "config.email_type_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/people/internal/zzn;->zzbpu:Landroid/os/Bundle;

    const-string v0, "config.phone_type_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/people/internal/zzn;->zzbpv:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zzb;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/internal/zzq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Lcom/google/android/gms/people/model/AvatarReference;",
            "Lcom/google/android/gms/people/Images$LoadImageOptions;",
            ")",
            "Lcom/google/android/gms/common/internal/zzq;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/zzn;->zzxz()V

    new-instance v1, Lcom/google/android/gms/people/internal/zzn$zzab;

    invoke-direct {v1, p1}, Lcom/google/android/gms/people/internal/zzn$zzab;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/zzn;->zzEK()Lcom/google/android/gms/people/internal/zzg;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->zza(Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;

    move-result-object v3

    invoke-interface {v2, v1, p2, v3}, Lcom/google/android/gms/people/internal/zzg;->zza(Lcom/google/android/gms/people/internal/zzf;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;)Lcom/google/android/gms/common/internal/zzq;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/google/android/gms/people/internal/zzn$zzab;->zza(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "post_init_configuration"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/zzn;->zzM(Landroid/os/Bundle;)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0, p4}, Lcom/google/android/gms/common/internal/zzj;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :cond_1
    const-string v0, "post_init_resolution"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;",
            ")V"
        }
    .end annotation

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/zzn;->zzxz()V

    new-instance v1, Lcom/google/android/gms/people/internal/zzn$zzo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/people/internal/zzn$zzo;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/zzn;->zzEK()Lcom/google/android/gms/people/internal/zzg;

    move-result-object v0

    iget-object v2, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->account:Ljava/lang/String;

    iget-object v3, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->pageId:Ljava/lang/String;

    iget-boolean v4, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->isDirectorySearch:Z

    iget-object v5, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->directoryAccountType:Ljava/lang/String;

    iget v7, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->autocompleteType:I

    iget v8, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->searchOptions:I

    iget v9, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->numberOfResults:I

    iget-boolean v10, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->useAndroidContactFallback:Z

    move-object v6, p2

    invoke-interface/range {v0 .. v10}, Lcom/google/android/gms/people/internal/zzg;->zza(Lcom/google/android/gms/people/internal/zzf;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/internal/zzq;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v11, v11}, Lcom/google/android/gms/people/internal/zzn$zzo;->zza(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/people/Images$SetAvatarResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/zzn;->zzxz()V

    new-instance v1, Lcom/google/android/gms/people/internal/zzn$zzp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/people/internal/zzn$zzp;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/zzn;->zzEK()Lcom/google/android/gms/people/internal/zzg;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/people/internal/zzg;->zza(Lcom/google/android/gms/people/internal/zzf;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/people/internal/zzn$zzp;->zza(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected synthetic zzaa(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/internal/zzn;->zzfG(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/zzg;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/zzq;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/common/internal/zzq;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Lcom/google/android/gms/people/internal/zzn$zzab;

    invoke-direct {v1, p1}, Lcom/google/android/gms/people/internal/zzn$zzab;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/zzn;->zzEK()Lcom/google/android/gms/people/internal/zzg;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/people/internal/zzg;->zzb(Lcom/google/android/gms/people/internal/zzf;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/zzq;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6, v6}, Lcom/google/android/gms/people/internal/zzn$zzab;->zza(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)V

    move-object v0, v6

    goto :goto_0
.end method

.method protected zzfG(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/zzg;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/people/internal/zzg$zza;->zzfF(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/zzg;

    move-result-object v0

    return-object v0
.end method

.method protected zzfO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.people.service.START"

    return-object v0
.end method

.method protected zzfP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    return-object v0
.end method

.method protected zziX()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "social_client_application_id"

    iget-object v2, p0, Lcom/google/android/gms/people/internal/zzn;->zzbps:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "real_client_package_name"

    iget-object v2, p0, Lcom/google/android/gms/people/internal/zzn;->zzQu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "support_new_image_callback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected zzxz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->zzoI()V

    return-void
.end method
