.class public abstract Lcom/android/calendar/widget/WidgetRow$Row;
.super Ljava/lang/Object;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Row"
.end annotation


# instance fields
.field private mIsRtl:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method


# virtual methods
.method public abstract getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
.end method

.method protected isRtl()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/calendar/widget/WidgetRow$Row;->mIsRtl:Z

    return v0
.end method

.method protected setViewColorFilter(Landroid/widget/RemoteViews;II)V
    .locals 1

    .prologue
    .line 204
    const-string v0, "setColorFilter"

    invoke-virtual {p1, p2, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 205
    return-void
.end method

.method public updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p1, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/widget/WidgetRow$Row;->mIsRtl:Z

    .line 177
    return-void
.end method

.method protected updateTextView(Landroid/widget/RemoteViews;IILjava/lang/CharSequence;II)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 189
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 190
    if-nez p3, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetRow$Row;->isRtl()Z

    move-result v0

    .line 192
    invoke-static {p4, v0}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p1, p2, p5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 194
    if-eqz v0, :cond_1

    move v2, v3

    .line 195
    :goto_0
    if-eqz v0, :cond_2

    move v4, p6

    :goto_1
    move-object v0, p1

    move v1, p2

    move v5, v3

    .line 196
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 198
    :cond_0
    return-void

    :cond_1
    move v2, p6

    .line 194
    goto :goto_0

    :cond_2
    move v4, v3

    .line 195
    goto :goto_1
.end method
