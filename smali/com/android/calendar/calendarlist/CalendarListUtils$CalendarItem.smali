.class public Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;
.super Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;
.source "CalendarListUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/calendarlist/CalendarListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarItem"
.end annotation


# instance fields
.field public color:I

.field public displayName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isPrimary:Z

.field public isSynced:Z

.field public isVisible:Z

.field public ownerAccount:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/data/CalendarItem;)V
    .locals 4

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;-><init>()V

    .line 522
    invoke-virtual {p1}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    .line 523
    invoke-virtual {p1}, Lcom/android/calendar/timely/data/CalendarItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->id:Ljava/lang/String;

    .line 524
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 525
    invoke-virtual {p1}, Lcom/android/calendar/timely/data/CalendarItem;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 524
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 526
    invoke-virtual {p1}, Lcom/android/calendar/timely/data/CalendarItem;->isSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    .line 527
    invoke-virtual {p1}, Lcom/android/calendar/timely/data/CalendarItem;->isSynced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    .line 528
    invoke-virtual {p1}, Lcom/android/calendar/timely/data/CalendarItem;->isPrimary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isPrimary:Z

    .line 529
    invoke-virtual {p1}, Lcom/android/calendar/timely/data/CalendarItem;->getColor()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    .line 530
    invoke-virtual {p1}, Lcom/android/calendar/timely/data/CalendarItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->displayName:Ljava/lang/String;

    .line 531
    invoke-virtual {p1}, Lcom/android/calendar/timely/data/CalendarItem;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->ownerAccount:Ljava/lang/String;

    .line 532
    iget-boolean v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isPrimary:Z

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 502
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;-><init>()V

    .line 503
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 504
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    .line 505
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->id:Ljava/lang/String;

    .line 506
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 507
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v2

    .line 506
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 508
    iput-boolean v4, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    .line 509
    iput-boolean v4, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    .line 510
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getIsPrimary()Z

    move-result v1

    .line 511
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    .line 512
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->displayName:Ljava/lang/String;

    .line 513
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->ownerAccount:Ljava/lang/String;

    .line 514
    if-eqz v1, :cond_0

    .line 515
    iput v4, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    goto :goto_0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x2

    return v0
.end method
