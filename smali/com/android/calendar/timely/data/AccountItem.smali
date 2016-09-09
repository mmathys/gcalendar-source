.class public Lcom/android/calendar/timely/data/AccountItem;
.super Ljava/lang/Object;
.source "AccountItem.java"

# interfaces
.implements Lcom/android/calendar/timely/data/DataCache$ProviderItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/timely/data/DataCache$ProviderItem",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mEventDuration:I

.field protected mNoEndTime:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    if-ne p1, p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/timely/data/AccountItem;

    if-eqz v2, :cond_3

    .line 51
    check-cast p1, Lcom/android/calendar/timely/data/AccountItem;

    .line 52
    iget-object v2, p0, Lcom/android/calendar/timely/data/AccountItem;->mAccount:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/android/calendar/timely/data/AccountItem;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/calendar/timely/data/AccountItem;->mEventDuration:I

    iget v3, p1, Lcom/android/calendar/timely/data/AccountItem;->mEventDuration:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/calendar/timely/data/AccountItem;->mNoEndTime:Z

    iget-boolean v3, p1, Lcom/android/calendar/timely/data/AccountItem;->mNoEndTime:Z

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 57
    goto :goto_0
.end method

.method public getEventDuration()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/calendar/timely/data/AccountItem;->mEventDuration:I

    return v0
.end method

.method public getId()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/timely/data/AccountItem;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/calendar/timely/data/AccountItem;->getId()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getNoEndTime()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/calendar/timely/data/AccountItem;->mNoEndTime:Z

    return v0
.end method
