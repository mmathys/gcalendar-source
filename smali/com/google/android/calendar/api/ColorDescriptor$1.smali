.class final Lcom/google/android/calendar/api/ColorDescriptor$1;
.super Ljava/lang/Object;
.source "ColorDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/ColorDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/calendar/api/ColorDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/google/android/calendar/api/ColorDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/calendar/api/ColorDescriptor;-><init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/ColorDescriptor$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/ColorDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 1

    .prologue
    .line 215
    new-array v0, p1, [Lcom/google/android/calendar/api/ColorDescriptor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/ColorDescriptor$1;->newArray(I)[Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    return-object v0
.end method