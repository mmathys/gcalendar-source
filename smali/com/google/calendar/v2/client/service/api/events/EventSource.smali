.class public Lcom/google/calendar/v2/client/service/api/events/EventSource;
.super Ljava/lang/Object;
.source "EventSource.java"


# instance fields
.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/events/EventSource;->url:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/api/events/EventSource;->title:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/api/events/EventSource;

    if-nez v2, :cond_2

    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/EventSource;

    .line 53
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventSource;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/events/EventSource;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventSource;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/events/EventSource;->title:Ljava/lang/String;

    .line 54
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventSource;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventSource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventSource;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/EventSource;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Url"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventSource;->url:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Title"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventSource;->title:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method
