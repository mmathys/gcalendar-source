.class public Lcom/android/calendar/calendarlist/CalendarListUtils$GroupHeaderItem;
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
    name = "GroupHeaderItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x2

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method
