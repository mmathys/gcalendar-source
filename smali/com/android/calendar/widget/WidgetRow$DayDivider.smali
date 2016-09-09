.class public Lcom/android/calendar/widget/WidgetRow$DayDivider;
.super Lcom/android/calendar/widget/WidgetRow$Row;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DayDivider"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/android/calendar/time/Time;ILcom/android/calendar/DateTimeFormatHelper;)V
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/calendar/widget/WidgetRow$Row;-><init>()V

    .line 351
    invoke-virtual {p4, p1, p2, p3}, Lcom/android/calendar/DateTimeFormatHelper;->getWidgetDayDividerText(ILcom/android/calendar/time/Time;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$DayDivider;->mLabel:Ljava/lang/String;

    .line 352
    return-void
.end method


# virtual methods
.method public getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->isNarrowStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    sget v0, Lcom/android/calendar/R$layout;->widget_day_divider_narrow:I

    .line 356
    :goto_0
    return v0

    .line 358
    :cond_0
    sget v0, Lcom/android/calendar/R$layout;->widget_day_divider_normal:I

    goto :goto_0
.end method

.method public updateView(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$layout;->widget_day_divider_normal:I

    if-ne v0, v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->date:I

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$DayDivider;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
