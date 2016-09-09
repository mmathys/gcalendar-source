.class public Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;
.super Ljava/lang/Object;
.source "ModifiableHangoutImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;


# instance fields
.field conferenceType:Ljava/lang/String;

.field hangoutLink:Ljava/lang/String;

.field hangoutName:Ljava/lang/String;

.field hasHangout:Z

.field private final notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ChangeNotifier",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Hangout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->newInstance()Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    .line 33
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hasHangout:Z

    .line 34
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutLink:Ljava/lang/String;

    .line 35
    if-nez p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    iput-object p3, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutName:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->conferenceType:Ljava/lang/String;

    .line 37
    return-void

    .line 33
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static from(Lcom/google/calendar/v2/client/service/api/events/Hangout;)Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;
    .locals 5

    .prologue
    .line 48
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;

    .line 49
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->hasHangout()Z

    move-result v1

    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutLink()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutName()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getConferenceType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/api/events/Hangout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 56
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->dispose()V

    .line 141
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;

    if-nez v2, :cond_2

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;

    .line 124
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutLink:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutName:Ljava/lang/String;

    .line 125
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hasHangout:Z

    iget-boolean v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hasHangout:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getConferenceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->conferenceType:Ljava/lang/String;

    return-object v0
.end method

.method public getHangoutLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutLink:Ljava/lang/String;

    return-object v0
.end method

.method public getHangoutName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutName:Ljava/lang/String;

    return-object v0
.end method

.method public hasHangout()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hasHangout:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hasHangout:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutLink:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutLink:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 112
    :cond_0
    return v0

    .line 108
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/api/events/Hangout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 61
    return-void
.end method

.method public setHangout(Z)V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hasHangout:Z

    if-eq v0, p1, :cond_0

    .line 86
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hasHangout:Z

    .line 87
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p0}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->notifyListeners(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Has hangout"

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hasHangout:Z

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Hangout link"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutLink:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Hangout name"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->hangoutName:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    return-object v0
.end method
