.class public Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;
.super Ljava/lang/Object;
.source "Autocomplete.java"

# interfaces
.implements Lcom/google/android/gms/people/People$ReleasableResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/chips/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadPhotoResult"
.end annotation


# static fields
.field public static final FAILED_RESULT:Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;


# instance fields
.field final mHeight:I

.field final mIsRewindable:Z

.field final mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final mStatus:Lcom/google/android/gms/common/api/Status;

.field final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 205
    new-instance v0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;ZII)V

    sput-object v0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;->FAILED_RESULT:Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;ZII)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;->mStatus:Lcom/google/android/gms/common/api/Status;

    .line 215
    iput-object p2, p0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 216
    iput-boolean p3, p0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;->mIsRewindable:Z

    .line 217
    iput p4, p0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;->mWidth:I

    .line 218
    iput p5, p0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;->mHeight:I

    .line 219
    return-void
.end method


# virtual methods
.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method
