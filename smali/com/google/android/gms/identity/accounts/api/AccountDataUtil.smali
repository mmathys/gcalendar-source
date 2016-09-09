.class public final Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;
.super Ljava/lang/Object;


# static fields
.field static final zzaUG:Lcom/google/android/gms/identity/accounts/api/zzb$zza;

.field private static final zzaUH:Lcom/google/android/gms/identity/accounts/api/zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil$1;

    invoke-direct {v0}, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->zzaUG:Lcom/google/android/gms/identity/accounts/api/zzb$zza;

    new-instance v0, Lcom/google/android/gms/identity/accounts/api/zzb;

    sget-object v1, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->zzaUG:Lcom/google/android/gms/identity/accounts/api/zzb$zza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/identity/accounts/api/zzb;-><init>(Lcom/google/android/gms/identity/accounts/api/zzb$zza;)V

    sput-object v0, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->zzaUH:Lcom/google/android/gms/identity/accounts/api/zzb;

    return-void
.end method

.method public static addAccountData(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/identity/accounts/api/AccountData;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->zzaUH:Lcom/google/android/gms/identity/accounts/api/zzb;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/identity/accounts/api/zzb;->addAccountData(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/identity/accounts/api/AccountData;)Z

    move-result v0

    return v0
.end method

.method public static getAccountData(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/identity/accounts/api/AccountData;
    .locals 1

    sget-object v0, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->zzaUH:Lcom/google/android/gms/identity/accounts/api/zzb;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/identity/accounts/api/zzb;->getAccountData(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/identity/accounts/api/AccountData;

    move-result-object v0

    return-object v0
.end method
