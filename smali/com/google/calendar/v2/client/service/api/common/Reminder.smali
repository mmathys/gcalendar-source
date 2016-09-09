.class public Lcom/google/calendar/v2/client/service/api/common/Reminder;
.super Ljava/lang/Object;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;
    }
.end annotation


# instance fields
.field private final mBefore:Lcom/google/calendar/v2/client/service/api/time/Duration;

.field private final mDeliveryMethod:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;


# direct methods
.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;Lcom/google/calendar/v2/client/service/api/time/Duration;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mDeliveryMethod:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    .line 46
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mBefore:Lcom/google/calendar/v2/client/service/api/time/Duration;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    if-nez v2, :cond_2

    move v0, v1

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 79
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mBefore:Lcom/google/calendar/v2/client/service/api/time/Duration;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mBefore:Lcom/google/calendar/v2/client/service/api/time/Duration;

    invoke-virtual {v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mDeliveryMethod:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mDeliveryMethod:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getBefore()Lcom/google/calendar/v2/client/service/api/time/Duration;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mBefore:Lcom/google/calendar/v2/client/service/api/time/Duration;

    return-object v0
.end method

.method public getDeliveryMethod()Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mDeliveryMethod:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mDeliveryMethod:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mBefore:Lcom/google/calendar/v2/client/service/api/time/Duration;

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Delivery method"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mDeliveryMethod:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    .line 86
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Before"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/Reminder;->mBefore:Lcom/google/calendar/v2/client/service/api/time/Duration;

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method
