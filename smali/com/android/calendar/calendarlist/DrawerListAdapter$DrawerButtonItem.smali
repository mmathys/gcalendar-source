.class public Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;
.super Ljava/lang/Object;
.source "DrawerListAdapter.java"

# interfaces
.implements Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/calendarlist/DrawerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawerButtonItem"
.end annotation


# instance fields
.field public final mIconId:I

.field public final mId:I

.field public final mLabelId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->mId:I

    .line 50
    iput p2, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->mLabelId:I

    .line 51
    iput p3, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->mIconId:I

    .line 52
    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x6

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    return v0
.end method
