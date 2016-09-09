.class public final Lcom/google/android/gms/internal/zzwl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzwl$1;,
        Lcom/google/android/gms/internal/zzwl$zza;
    }
.end annotation


# static fields
.field public static final zzbDP:Lcom/google/android/gms/internal/zzwl;


# instance fields
.field private final zzTh:Z

.field private final zzTj:Z

.field private final zzTk:Ljava/lang/String;

.field private final zzbDQ:Z

.field private final zzbDR:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

.field private final zzbDS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzwl$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzwl$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwl$zza;->zzGH()Lcom/google/android/gms/internal/zzwl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzwl;->zzbDP:Lcom/google/android/gms/internal/zzwl;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzwl;->zzbDQ:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzwl;->zzTh:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzwl;->zzTk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzwl;->zzbDR:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzwl;->zzbDS:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzwl;->zzTj:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZLcom/google/android/gms/internal/zzwl$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzwl;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZ)V

    return-void
.end method


# virtual methods
.method public getServerClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwl;->zzTk:Ljava/lang/String;

    return-object v0
.end method

.method public isForceCodeForRefreshToken()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzwl;->zzTj:Z

    return v0
.end method

.method public isIdTokenRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzwl;->zzTh:Z

    return v0
.end method

.method public zzGE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzwl;->zzbDQ:Z

    return v0
.end method

.method public zzGF()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwl;->zzbDR:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    return-object v0
.end method

.method public zzGG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzwl;->zzbDS:Z

    return v0
.end method
