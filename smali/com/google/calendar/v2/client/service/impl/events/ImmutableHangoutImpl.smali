.class public Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;
.super Ljava/lang/Object;
.source "ImmutableHangoutImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/Hangout;


# static fields
.field public static final NO_HANGOUT:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;


# instance fields
.field private final conferenceType:Ljava/lang/String;

.field private final hangoutLink:Ljava/lang/String;

.field private final hangoutName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->NO_HANGOUT:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutLink:Ljava/lang/String;

    .line 22
    if-nez p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->conferenceType:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    .line 57
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutLink:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutLink:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutName:Ljava/lang/String;

    .line 58
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getConferenceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->conferenceType:Ljava/lang/String;

    return-object v0
.end method

.method public getHangoutLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutLink:Ljava/lang/String;

    return-object v0
.end method

.method public getHangoutName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutName:Ljava/lang/String;

    return-object v0
.end method

.method public hasHangout()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutLink:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutLink:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutLink:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Has hangout"

    .line 64
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hasHangout()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Hangout link"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->hangoutLink:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method
