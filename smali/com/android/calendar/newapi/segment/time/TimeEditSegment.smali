.class public abstract Lcom/android/calendar/newapi/segment/time/TimeEditSegment;
.super Lcom/android/calendar/newapi/segment/common/EditSegment;
.source "TimeEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerT:Ljava/lang/Object;",
        ">",
        "Lcom/android/calendar/newapi/segment/common/EditSegment",
        "<T",
        "ListenerT;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mDateFormatFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->edit_datetime_formatting_abbrev:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 28
    if-eqz v0, :cond_0

    const v0, 0x18016

    :goto_0
    iput v0, p0, Lcom/android/calendar/newapi/segment/time/TimeEditSegment;->mDateFormatFlags:I

    .line 29
    return-void

    .line 28
    :cond_0
    const v0, 0x10016

    goto :goto_0
.end method


# virtual methods
.method protected getDateFormatFlags()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/calendar/newapi/segment/time/TimeEditSegment;->mDateFormatFlags:I

    return v0
.end method
