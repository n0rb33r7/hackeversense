.class Lcom/senseonics/account/UserProfilePresenter$1;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/UserProfilePresenter;->attach(Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/UserProfilePresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$1;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$1;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/senseonics/account/UserProfilePresenter;->-$$Nest$mrefreshUserData(Lcom/senseonics/account/UserProfilePresenter;Z)V

    return-void
.end method
