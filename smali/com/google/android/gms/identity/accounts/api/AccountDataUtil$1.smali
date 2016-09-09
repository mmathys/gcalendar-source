.class final Lcom/google/android/gms/identity/accounts/api/AccountDataUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/identity/accounts/api/zzb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPackageGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Package manager must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Package name must not be empty."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isPackageGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
