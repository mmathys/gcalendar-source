.class public final Lcom/google/android/gms/people/identity/internal/AccountToken;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/identity/internal/zza;


# instance fields
.field private final mVersionCode:I

.field private final zzRy:Ljava/lang/String;

.field private final zzbkC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/identity/internal/zza;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/AccountToken;->CREATOR:Lcom/google/android/gms/people/identity/internal/zza;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->zzRy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->zzbkC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->zzRy:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/identity/internal/zza;->zza(Lcom/google/android/gms/people/identity/internal/AccountToken;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzBF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/AccountToken;->zzbkC:Ljava/lang/String;

    return-object v0
.end method
