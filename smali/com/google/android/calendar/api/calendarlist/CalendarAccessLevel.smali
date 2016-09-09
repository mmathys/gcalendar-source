.class public Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;
.super Ljava/lang/Object;
.source "CalendarAccessLevel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;",
            ">;"
        }
    .end annotation
.end field

.field public static final FREEBUSY:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

.field public static final NONE:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

.field public static final OWNER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

.field public static final READER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

.field public static final WRITER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;


# instance fields
.field private final mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;-><init>(I)V

    sput-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->NONE:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    .line 36
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;-><init>(I)V

    sput-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->FREEBUSY:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    .line 38
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;-><init>(I)V

    sput-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->READER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    .line 40
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;-><init>(I)V

    sput-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->WRITER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    .line 42
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;-><init>(I)V

    sput-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->OWNER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    .line 109
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->mLevel:I

    .line 49
    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->checkLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->accessLevelIntToCalendarAccessLevel(I)Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    move-result-object v0

    return-object v0
.end method

.method private static accessLevelIntToCalendarAccessLevel(I)Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;
    .locals 2

    .prologue
    .line 66
    sparse-switch p0, :sswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown access level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :sswitch_0
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->NONE:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    .line 76
    :goto_0
    return-object v0

    .line 70
    :sswitch_1
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->FREEBUSY:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    goto :goto_0

    .line 72
    :sswitch_2
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->READER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    goto :goto_0

    .line 74
    :sswitch_3
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->WRITER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    goto :goto_0

    .line 76
    :sswitch_4
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->OWNER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    goto :goto_0

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x258 -> :sswitch_3
        0x2bc -> :sswitch_4
    .end sparse-switch
.end method

.method private static checkLevel(I)I
    .locals 2

    .prologue
    .line 53
    sparse-switch p0, :sswitch_data_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown access level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :sswitch_0
    return p0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x258 -> :sswitch_0
        0x2bc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public compareTo(Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;)I
    .locals 2

    .prologue
    .line 103
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->mLevel:I

    iget v1, p1, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->mLevel:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->compareTo(Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 88
    goto :goto_0

    .line 90
    :cond_3
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    .line 91
    iget v2, p0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->mLevel:I

    iget v3, p1, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->mLevel:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->mLevel:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return-void
.end method
