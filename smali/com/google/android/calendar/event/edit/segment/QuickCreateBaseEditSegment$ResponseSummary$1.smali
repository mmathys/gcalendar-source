.class final Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary$1;
.super Ljava/lang/Object;
.source "QuickCreateBaseEditSegment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;
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
        "Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;
    .locals 1

    .prologue
    .line 1118
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1115
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;
    .locals 1

    .prologue
    .line 1123
    new-array v0, p1, [Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1115
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary$1;->newArray(I)[Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;

    move-result-object v0

    return-object v0
.end method
