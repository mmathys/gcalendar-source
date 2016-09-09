.class public Lcom/google/android/gms/feedback/LogOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/feedback/LogOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mIncludeRadioLogs:Z

.field public mLogFilter:Ljava/lang/String;

.field public final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/feedback/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/feedback/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/feedback/LogOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/feedback/LogOptions;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/feedback/LogOptions;->mLogFilter:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/feedback/LogOptions;->mIncludeRadioLogs:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/feedback/zzd;->zza(Lcom/google/android/gms/feedback/LogOptions;Landroid/os/Parcel;I)V

    return-void
.end method
