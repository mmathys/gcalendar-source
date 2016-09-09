.class public Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;
.super Ljava/lang/Object;
.source "UsageHintDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;
    }
.end annotation


# instance fields
.field private final mHintType:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

.field private final mId:Ljava/lang/String;

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p4, p0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mHintType:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mId:Ljava/lang/String;

    .line 42
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mMessages:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mTag:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 73
    if-ne p0, p1, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 76
    :cond_0
    instance-of v0, p1, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    check-cast p1, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    .line 80
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getHintType()Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mHintType:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->mId:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method
