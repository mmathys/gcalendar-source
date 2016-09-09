.class public Lcom/google/android/calendar/api/attendee/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/attendee/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mComment:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/api/attendee/Response$Builder;->mStatus:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/Response$Builder;->mComment:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/api/attendee/Response$Builder;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/calendar/api/attendee/Response$Builder;->mStatus:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/api/attendee/Response$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Response$Builder;->mComment:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/calendar/api/attendee/Response;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/calendar/api/attendee/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/api/attendee/Response;-><init>(Lcom/google/android/calendar/api/attendee/Response$Builder;Lcom/google/android/calendar/api/attendee/Response$1;)V

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)Lcom/google/android/calendar/api/attendee/Response$Builder;
    .locals 1

    .prologue
    .line 72
    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/Response$Builder;->mComment:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/calendar/api/attendee/Response$Builder;
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/google/android/calendar/api/attendee/Response$Builder;->mStatus:I

    .line 65
    return-object p0
.end method
