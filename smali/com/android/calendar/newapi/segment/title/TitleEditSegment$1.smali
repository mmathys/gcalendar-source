.class Lcom/android/calendar/newapi/segment/title/TitleEditSegment$1;
.super Ljava/lang/Object;
.source "TitleEditSegment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/segment/title/TitleEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    # getter for: Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mListener:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->access$000(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    # getter for: Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mListener:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->access$100(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$Listener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$Listener;->onTitleChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
