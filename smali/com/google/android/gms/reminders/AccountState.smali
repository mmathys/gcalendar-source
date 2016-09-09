.class public Lcom/google/android/gms/reminders/AccountState;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/AccountState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbyv:[Z

.field private final zzbyw:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/zza;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/AccountState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[Z[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/reminders/AccountState;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/reminders/AccountState;->zzbyv:[Z

    iput-object p3, p0, Lcom/google/android/gms/reminders/AccountState;->zzbyw:[Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBits()[Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/AccountState;->zzbyv:[Z

    return-object v0
.end method

.method public getIsSetBits()[Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/AccountState;->zzbyw:[Z

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/zza;->zza(Lcom/google/android/gms/reminders/AccountState;Landroid/os/Parcel;I)V

    return-void
.end method
