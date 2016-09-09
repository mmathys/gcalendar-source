.class public Lcom/android/calendar/timely/data/CalendarItem$Builder;
.super Ljava/lang/Object;
.source "CalendarItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/data/CalendarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mColor:I

.field private mDisplayName:Ljava/lang/String;

.field private mId:J

.field private mOwnerAccount:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/data/CalendarItem$Builder;->mColor:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/data/CalendarItem$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/calendar/timely/data/CalendarItem$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/data/CalendarItem$Builder;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/calendar/timely/data/CalendarItem$Builder;->mId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/data/CalendarItem$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem$Builder;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/data/CalendarItem$Builder;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/calendar/timely/data/CalendarItem$Builder;->mColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/data/CalendarItem$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem$Builder;->mOwnerAccount:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/calendar/timely/data/CalendarItem;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/android/calendar/timely/data/CalendarItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/data/CalendarItem;-><init>(Lcom/android/calendar/timely/data/CalendarItem$Builder;Lcom/android/calendar/timely/data/CalendarItem$1;)V

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/android/calendar/timely/data/CalendarItem$Builder;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/calendar/timely/data/CalendarItem$Builder;->mDisplayName:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public setId(J)Lcom/android/calendar/timely/data/CalendarItem$Builder;
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/android/calendar/timely/data/CalendarItem$Builder;->mId:J

    .line 63
    return-object p0
.end method

.method public setOwnerAccount(Ljava/lang/String;)Lcom/android/calendar/timely/data/CalendarItem$Builder;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/calendar/timely/data/CalendarItem$Builder;->mOwnerAccount:Ljava/lang/String;

    .line 53
    return-object p0
.end method
