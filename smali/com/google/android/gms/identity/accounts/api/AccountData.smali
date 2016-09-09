.class public final Lcom/google/android/gms/identity/accounts/api/AccountData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/identity/accounts/api/AccountData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzRy:Ljava/lang/String;

.field private final zzaUF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/identity/accounts/api/zza;

    invoke-direct {v0}, Lcom/google/android/gms/identity/accounts/api/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/accounts/api/AccountData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Account name must not be empty."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->zzRy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->zzaUF:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/identity/accounts/api/AccountData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static forAccount(Ljava/lang/String;)Lcom/google/android/gms/identity/accounts/api/AccountData;
    .locals 2

    const-string v0, "Account name must not be empty."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzx;->zzd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/identity/accounts/api/AccountData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/identity/accounts/api/AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->zzRy:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusPageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->zzaUF:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/identity/accounts/api/AccountData;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identity/accounts/api/zza;->zza(Lcom/google/android/gms/identity/accounts/api/AccountData;Landroid/os/Parcel;I)V

    return-void
.end method
