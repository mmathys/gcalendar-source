.class public Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;
.super Ljava/lang/Object;
.source "CalendarListUtils.java"

# interfaces
.implements Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/calendarlist/CalendarListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountItem"
.end annotation


# instance fields
.field public account:Landroid/accounts/Account;

.field public priority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->priority:I

    .line 438
    iput-object p1, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    .line 439
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    return v0
.end method
