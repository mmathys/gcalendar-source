.class public Lcom/google/android/calendar/api/time/Recurrence;
.super Ljava/lang/Object;
.source "Recurrence.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/time/Recurrence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

.field public final firstStartMillisSinceEpoch:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/calendar/api/time/Recurrence$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/time/Recurrence$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/time/Recurrence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLcom/google/android/calendar/api/time/Recurrence$RecurrenceData;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-wide p1, p0, Lcom/google/android/calendar/api/time/Recurrence;->firstStartMillisSinceEpoch:J

    .line 67
    iput-object p3, p0, Lcom/google/android/calendar/api/time/Recurrence;->data:Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    const-class v0, Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

    .line 71
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/calendar/api/time/Recurrence;-><init>(JLcom/google/android/calendar/api/time/Recurrence$RecurrenceData;)V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/time/Recurrence$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/time/Recurrence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/android/calendar/api/time/Recurrence;->firstStartMillisSinceEpoch:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-object v0, p0, Lcom/google/android/calendar/api/time/Recurrence;->data:Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    return-void
.end method
