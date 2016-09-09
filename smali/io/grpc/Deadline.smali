.class public final Lio/grpc/Deadline;
.super Ljava/lang/Object;
.source "Deadline.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Deadline$SystemTicker;,
        Lio/grpc/Deadline$Ticker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/grpc/Deadline;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_OFFSET:J

.field private static final MIN_OFFSET:J

.field private static final SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;


# instance fields
.field private final deadlineNanos:J

.field private volatile expired:Z

.field private final ticker:Lio/grpc/Deadline$Ticker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lio/grpc/Deadline$SystemTicker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/Deadline$SystemTicker;-><init>(Lio/grpc/Deadline$1;)V

    sput-object v0, Lio/grpc/Deadline;->SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0x8e94

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/Deadline;->MAX_OFFSET:J

    .line 49
    sget-wide v0, Lio/grpc/Deadline;->MAX_OFFSET:J

    neg-long v0, v0

    sput-wide v0, Lio/grpc/Deadline;->MIN_OFFSET:J

    return-void
.end method

.method private constructor <init>(Lio/grpc/Deadline$Ticker;JJZ)V
    .locals 4

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    .line 79
    sget-wide v0, Lio/grpc/Deadline;->MAX_OFFSET:J

    sget-wide v2, Lio/grpc/Deadline;->MIN_OFFSET:J

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 80
    add-long v2, p2, v0

    iput-wide v2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    .line 81
    if-eqz p6, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lio/grpc/Deadline;->expired:Z

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lio/grpc/Deadline$Ticker;JZ)V
    .locals 8

    .prologue
    .line 72
    invoke-virtual {p1}, Lio/grpc/Deadline$Ticker;->read()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/grpc/Deadline;-><init>(Lio/grpc/Deadline$Ticker;JJZ)V

    .line 73
    return-void
.end method

.method public static after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lio/grpc/Deadline;->SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;

    invoke-static {p0, p1, p2, v0}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;Lio/grpc/Deadline$Ticker;)Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method static after(JLjava/util/concurrent/TimeUnit;Lio/grpc/Deadline$Ticker;)Lio/grpc/Deadline;
    .locals 4

    .prologue
    .line 63
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lio/grpc/Deadline;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, p3, v2, v3, v1}, Lio/grpc/Deadline;-><init>(Lio/grpc/Deadline$Ticker;JZ)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lio/grpc/Deadline;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 161
    iget-wide v0, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-wide v2, p1, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v0, v2

    .line 162
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 163
    const/4 v0, -0x1

    .line 167
    :goto_0
    return v0

    .line 164
    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lio/grpc/Deadline;

    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->compareTo(Lio/grpc/Deadline;)I

    move-result v0

    return v0
.end method

.method public isBefore(Lio/grpc/Deadline;)Z
    .locals 4

    .prologue
    .line 103
    iget-wide v0, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-wide v2, p1, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-boolean v1, p0, Lio/grpc/Deadline;->expired:Z

    if-nez v1, :cond_0

    .line 90
    iget-wide v2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-object v1, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    invoke-virtual {v1}, Lio/grpc/Deadline$Ticker;->read()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 91
    iput-boolean v0, p0, Lio/grpc/Deadline;->expired:Z

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minimum(Lio/grpc/Deadline;)Lio/grpc/Deadline;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->isBefore(Lio/grpc/Deadline;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public timeRemaining(Ljava/util/concurrent/TimeUnit;)J
    .locals 6

    .prologue
    .line 135
    iget-object v0, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    invoke-virtual {v0}, Lio/grpc/Deadline$Ticker;->read()J

    move-result-wide v0

    .line 136
    iget-boolean v2, p0, Lio/grpc/Deadline;->expired:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/grpc/Deadline;->expired:Z

    .line 139
    :cond_0
    iget-wide v2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long v0, v2, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ns from now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
