.class public Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzaAc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveFileRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaAd:J

.field final zzaAe:J

.field final zzaAf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveFileRange;",
            ">;"
        }
    .end annotation
.end field

.field final zzxE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzaAc:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/drive/internal/zzaz;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzaz;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveFileRange;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzaAd:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzaAe:J

    iput p6, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzxE:I

    iput-object p7, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzaAf:Ljava/util/List;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzaz;->zza(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;Landroid/os/Parcel;I)V

    return-void
.end method
