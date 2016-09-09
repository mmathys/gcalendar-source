.class public Lcom/android/calendar/widget/WidgetRow$Footer;
.super Lcom/android/calendar/widget/WidgetRow$Row;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Footer"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/calendar/widget/WidgetRow$Row;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->isNarrowStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget v0, Lcom/android/calendar/R$layout;->widget_footer_narrow:I

    .line 271
    :goto_0
    return v0

    .line 272
    :cond_0
    sget v0, Lcom/android/calendar/R$layout;->widget_footer_normal:I

    goto :goto_0
.end method
