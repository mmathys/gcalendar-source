.class Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;
.super Lcom/google/android/calendar/timely/location/EventLocationResolverTask;
.source "TimelyWhereEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->onSuggestionAccepted(Lcom/android/calendar/event/EventLocationAdapter$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

.field final synthetic val$acceptedSuggestionId:I


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;Landroid/content/Context;Ljava/util/Locale;I)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    iput p4, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;->val$acceptedSuggestionId:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;->val$acceptedSuggestionId:I

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mCurrentAcceptedSuggestionId:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$700(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 181
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$800(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    .line 182
    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$200(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$900(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$200(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 175
    check-cast p1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;->onPostExecute(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V

    return-void
.end method
