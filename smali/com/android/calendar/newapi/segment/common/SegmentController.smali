.class public abstract Lcom/android/calendar/newapi/segment/common/SegmentController;
.super Landroid/app/Fragment;
.source "SegmentController.java"


# static fields
.field public static sAnimationsOn:Z


# instance fields
.field private mEditScreenController:Lcom/android/calendar/newapi/screen/EditScreenController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/newapi/segment/common/SegmentController;->sAnimationsOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Lcom/android/calendar/newapi/screen/EditScreenController;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/common/SegmentController;->mEditScreenController:Lcom/android/calendar/newapi/screen/EditScreenController;

    .line 31
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onInitialize()V

    .line 32
    return-void
.end method

.method protected final notifyAllDayStateChanged()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SegmentController;->mEditScreenController:Lcom/android/calendar/newapi/screen/EditScreenController;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->notifyAllDayStateChanged(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 68
    return-void
.end method

.method protected final notifyCalendarChanged()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SegmentController;->mEditScreenController:Lcom/android/calendar/newapi/screen/EditScreenController;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->notifyCalendarChanged(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 56
    return-void
.end method

.method protected final notifyColorChanged()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SegmentController;->mEditScreenController:Lcom/android/calendar/newapi/screen/EditScreenController;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->notifyColorChanged(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 44
    return-void
.end method

.method protected final notifyTimeChanged()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SegmentController;->mEditScreenController:Lcom/android/calendar/newapi/screen/EditScreenController;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->notifyTimeChanged(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 81
    return-void
.end method

.method public onAllDayStateChanged()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onCalendarChanged()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onColorChanged()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected abstract onInitialize()V
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
