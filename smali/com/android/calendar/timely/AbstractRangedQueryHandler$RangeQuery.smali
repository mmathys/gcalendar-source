.class Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;
.super Ljava/lang/Object;
.source "AbstractRangedQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/AbstractRangedQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeQuery"
.end annotation


# instance fields
.field private mData:Lcom/android/calendar/timely/RangedData;

.field private mToken:I

.field private mVersion:J


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/RangedData;I)V
    .locals 2

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    invoke-interface {p1, p2}, Lcom/android/calendar/timely/RangedData;->setToken(I)V

    .line 527
    iput-object p1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->mData:Lcom/android/calendar/timely/RangedData;

    .line 528
    iput p2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->mToken:I

    .line 529
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->mVersion:J

    .line 530
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)J
    .locals 2

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)Lcom/android/calendar/timely/RangedData;
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getData()Lcom/android/calendar/timely/RangedData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)I
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getToken()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;J)V
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->setVersion(J)V

    return-void
.end method

.method private getData()Lcom/android/calendar/timely/RangedData;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->mData:Lcom/android/calendar/timely/RangedData;

    return-object v0
.end method

.method private getToken()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->mToken:I

    return v0
.end method

.method private getVersion()J
    .locals 2

    .prologue
    .line 541
    iget-wide v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->mVersion:J

    return-wide v0
.end method

.method private setVersion(J)V
    .locals 1

    .prologue
    .line 545
    iput-wide p1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->mVersion:J

    .line 546
    return-void
.end method
