.class public Lcom/google/android/gms/feedback/ThemeSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/feedback/ThemeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field zzaGb:I

.field zzaGc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/feedback/zze;

    invoke-direct {v0}, Lcom/google/android/gms/feedback/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/feedback/ThemeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/feedback/ThemeSettings;-><init>(III)V

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/feedback/ThemeSettings;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/feedback/ThemeSettings;->zzaGb:I

    iput p3, p0, Lcom/google/android/gms/feedback/ThemeSettings;->zzaGc:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTheme(I)Lcom/google/android/gms/feedback/ThemeSettings;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/feedback/ThemeSettings;->zzaGb:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/feedback/zze;->zza(Lcom/google/android/gms/feedback/ThemeSettings;Landroid/os/Parcel;I)V

    return-void
.end method
