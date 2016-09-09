.class Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$2;
.super Ljava/lang/Object;
.source "TimelyWhereEditSegment.java"

# interfaces
.implements Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelected(I)V
    .locals 3

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$200(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    .line 85
    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mLocationAddress:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$300(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    .line 84
    invoke-static {v1, v0}, Lcom/google/android/calendar/utils/MapsUrlBuilder;->buildMapsLink(Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    invoke-virtual {v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 89
    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$400()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v1, v0, v2}, Lcom/android/calendar/Utils;->startActivityForUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$200(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V

    .line 94
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$600(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$500(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
