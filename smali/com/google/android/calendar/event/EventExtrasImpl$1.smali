.class final Lcom/google/android/calendar/event/EventExtrasImpl$1;
.super Ljava/lang/Object;
.source "EventExtrasImpl.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/EventExtrasImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/google/android/calendar/event/EventExtrasImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/event/EventExtrasImpl;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/calendar/event/EventExtrasImpl;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/calendar/event/EventExtrasImpl;
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/google/android/calendar/event/EventExtrasImpl;

    invoke-direct {v0, p1, p2}, Lcom/google/android/calendar/event/EventExtrasImpl;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/EventExtrasImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/event/EventExtrasImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/EventExtrasImpl$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/calendar/event/EventExtrasImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/calendar/event/EventExtrasImpl;
    .locals 1

    .prologue
    .line 335
    new-array v0, p1, [Lcom/google/android/calendar/event/EventExtrasImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/EventExtrasImpl$1;->newArray(I)[Lcom/google/android/calendar/event/EventExtrasImpl;

    move-result-object v0

    return-object v0
.end method
