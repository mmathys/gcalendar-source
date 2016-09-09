.class public Lcom/android/calendar/timely/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/ContactInfo$Builder;
    }
.end annotation


# instance fields
.field public final mContactId:Ljava/lang/Long;

.field public final mFocusId:Ljava/lang/Long;

.field public final mHasPhoto:Ljava/lang/Boolean;

.field public final mLookupKey:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mPrimaryEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/ContactInfo$Builder;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    # getter for: Lcom/android/calendar/timely/ContactInfo$Builder;->mFocusId:Ljava/lang/Long;
    invoke-static {p1}, Lcom/android/calendar/timely/ContactInfo$Builder;->access$000(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    .line 37
    # getter for: Lcom/android/calendar/timely/ContactInfo$Builder;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/timely/ContactInfo$Builder;->access$100(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mName:Ljava/lang/String;

    .line 38
    # getter for: Lcom/android/calendar/timely/ContactInfo$Builder;->mPrimaryEmail:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/timely/ContactInfo$Builder;->access$200(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    .line 39
    # getter for: Lcom/android/calendar/timely/ContactInfo$Builder;->mContactId:Ljava/lang/Long;
    invoke-static {p1}, Lcom/android/calendar/timely/ContactInfo$Builder;->access$300(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mContactId:Ljava/lang/Long;

    .line 40
    # getter for: Lcom/android/calendar/timely/ContactInfo$Builder;->mLookupKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/timely/ContactInfo$Builder;->access$400(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mLookupKey:Ljava/lang/String;

    .line 41
    # getter for: Lcom/android/calendar/timely/ContactInfo$Builder;->mHasPhoto:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/android/calendar/timely/ContactInfo$Builder;->access$500(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mHasPhoto:Ljava/lang/Boolean;

    .line 42
    return-void
.end method

.method public static newBuilder()Lcom/android/calendar/timely/ContactInfo$Builder;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/calendar/timely/ContactInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/ContactInfo$Builder;-><init>(Lcom/android/calendar/timely/ContactInfo$1;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/android/calendar/timely/ContactInfo;)Lcom/android/calendar/timely/ContactInfo$Builder;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/calendar/timely/ContactInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/ContactInfo$Builder;-><init>(Lcom/android/calendar/timely/ContactInfo$1;)V

    iget-object v1, p0, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfo$Builder;->setFocusId(Ljava/lang/Long;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/ContactInfo;->mName:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfo$Builder;->setName(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfo$Builder;->setPrimaryEmail(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/ContactInfo;->mContactId:Ljava/lang/Long;

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfo$Builder;->setContactId(Ljava/lang/Long;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/ContactInfo;->mLookupKey:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfo$Builder;->setLookupKey(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/ContactInfo;->mHasPhoto:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfo$Builder;->setHasPhoto(Ljava/lang/Boolean;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    .line 49
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 80
    goto :goto_0

    .line 83
    :cond_3
    check-cast p1, Lcom/android/calendar/timely/ContactInfo;

    .line 85
    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 86
    goto :goto_0

    .line 85
    :cond_5
    iget-object v2, p1, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    if-nez v2, :cond_4

    .line 88
    :cond_6
    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 90
    goto :goto_0

    .line 88
    :cond_7
    iget-object v2, p1, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getNameNotEmpty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 99
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 100
    return v0

    :cond_1
    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "mFocusId"

    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mFocusId:Ljava/lang/Long;

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "mName"

    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mName:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPrimaryEmail"

    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "mContactId"

    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mContactId:Ljava/lang/Long;

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "mLookupKey"

    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mLookupKey:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "mHasPhoto"

    iget-object v2, p0, Lcom/android/calendar/timely/ContactInfo;->mHasPhoto:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method
