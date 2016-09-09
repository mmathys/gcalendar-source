.class public Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/internal/zzk;


# instance fields
.field private final mUseLargePictureForCp2Images:Z

.field private final mVersionCode:I

.field private final zzbkZ:I

.field private final zzbla:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->CREATOR:Lcom/google/android/gms/people/internal/zzk;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->zzbkZ:I

    iput p3, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->zzbla:I

    iput-boolean p4, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->mUseLargePictureForCp2Images:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/people/Images$LoadImageOptions;->DEFAULT:Lcom/google/android/gms/people/Images$LoadImageOptions;

    :cond_0
    new-instance v0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/people/Images$LoadImageOptions;->imageSize:I

    iget v3, p0, Lcom/google/android/gms/people/Images$LoadImageOptions;->avatarOptions:I

    iget-boolean v4, p0, Lcom/google/android/gms/people/Images$LoadImageOptions;->useLargePictureForCp2Images:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;-><init>(IIIZ)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "imageSize"

    iget v2, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->zzbkZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "avatarOptions"

    iget v2, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->zzbla:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "useLargePictureForCp2Images"

    iget-boolean v2, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->mUseLargePictureForCp2Images:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/internal/zzk;->zza(Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzEH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->zzbkZ:I

    return v0
.end method

.method public zzEI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->zzbla:I

    return v0
.end method

.method public zzEJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->mUseLargePictureForCp2Images:Z

    return v0
.end method
