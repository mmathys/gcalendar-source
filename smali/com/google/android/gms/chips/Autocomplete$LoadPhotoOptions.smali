.class public final Lcom/google/android/gms/chips/Autocomplete$LoadPhotoOptions;
.super Ljava/lang/Object;
.source "Autocomplete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/chips/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadPhotoOptions"
.end annotation


# instance fields
.field private final mImageSize:I

.field private final mPhotoOptions:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput p1, p0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoOptions;->mImageSize:I

    .line 185
    iput p2, p0, Lcom/google/android/gms/chips/Autocomplete$LoadPhotoOptions;->mPhotoOptions:I

    .line 186
    return-void
.end method
