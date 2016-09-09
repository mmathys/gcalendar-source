.class final Lcom/android/calendar/timely/TimelineSuggestion$2;
.super Ljava/lang/Object;
.source "TimelineSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineSuggestion;
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
        "Lcom/android/calendar/timely/TimelineSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/TimelineSuggestion;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelineSuggestion$2;->createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 1

    .prologue
    .line 53
    new-array v0, p1, [Lcom/android/calendar/timely/TimelineSuggestion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelineSuggestion$2;->newArray(I)[Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v0

    return-object v0
.end method
