.class Lcom/android/calendar/event/EventLocationAdapter$LocationFilter$1;
.super Landroid/os/AsyncTask;
.source "EventLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/calendar/event/EventLocationAdapter$Result;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;

.field final synthetic val$filter:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter$1;->this$1:Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;

    iput-object p2, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter$1;->val$filter:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 377
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter$1;->this$1:Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;

    iget-object v0, v0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventLocationAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter$1;->this$1:Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;

    iget-object v1, v1, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    # getter for: Lcom/android/calendar/event/EventLocationAdapter;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/calendar/event/EventLocationAdapter;->access$500(Lcom/android/calendar/event/EventLocationAdapter;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter$1;->val$filter:Ljava/lang/String;

    # invokes: Lcom/android/calendar/event/EventLocationAdapter;->queryRecentLocations(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventLocationAdapter;->access$800(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
