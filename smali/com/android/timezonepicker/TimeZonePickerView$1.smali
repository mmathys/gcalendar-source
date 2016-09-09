.class Lcom/android/timezonepicker/TimeZonePickerView$1;
.super Ljava/lang/Object;
.source "TimeZonePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/timezonepicker/TimeZonePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;JLcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/timezonepicker/TimeZonePickerView;


# direct methods
.method constructor <init>(Lcom/android/timezonepicker/TimeZonePickerView;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/timezonepicker/TimeZonePickerView$1;->this$0:Lcom/android/timezonepicker/TimeZonePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView$1;->this$0:Lcom/android/timezonepicker/TimeZonePickerView;

    # getter for: Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/timezonepicker/TimeZonePickerView;->access$000(Lcom/android/timezonepicker/TimeZonePickerView;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 87
    return-void
.end method
