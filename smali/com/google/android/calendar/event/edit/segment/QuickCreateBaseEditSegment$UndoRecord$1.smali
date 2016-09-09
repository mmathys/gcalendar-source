.class final Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord$1;
.super Ljava/lang/Object;
.source "QuickCreateBaseEditSegment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;
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
        "Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;
    .locals 1

    .prologue
    .line 1064
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;
    .locals 1

    .prologue
    .line 1069
    new-array v0, p1, [Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord$1;->newArray(I)[Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;

    move-result-object v0

    return-object v0
.end method
