.class public Lcom/google/android/gms/googlehelp/internal/common/TogglingData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/googlehelp/internal/common/TogglingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field zzaSU:Ljava/lang/String;

.field zzaTM:Ljava/lang/String;

.field zzaTN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/googlehelp/internal/common/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/googlehelp/internal/common/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;->zzaSU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;->zzaTM:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;->zzaTN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPipTitle(Ljava/lang/String;)Lcom/google/android/gms/googlehelp/internal/common/TogglingData;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;->zzaTN:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/googlehelp/internal/common/zzk;->zza(Lcom/google/android/gms/googlehelp/internal/common/TogglingData;Landroid/os/Parcel;I)V

    return-void
.end method
