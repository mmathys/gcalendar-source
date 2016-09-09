.class Lcom/android/calendar/calendarlist/DrawerListAdapter$StatusbarSpacingItem;
.super Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;
.source "DrawerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/calendarlist/DrawerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusbarSpacingItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0, v0, v0}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;-><init>(III)V

    .line 104
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x8

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x5

    return v0
.end method
