.class Lcom/senseonics/account/UserProfilePresenter$6$1;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/UserProfilePresenter$6;->onAccept()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/account/UserProfilePresenter$6;

.field final synthetic val$profileImageBase64Encoded:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter$6;Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$6$1;->this$1:Lcom/senseonics/account/UserProfilePresenter$6;

    iput-object p2, p0, Lcom/senseonics/account/UserProfilePresenter$6$1;->val$profileImageBase64Encoded:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 132
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$6$1;->this$1:Lcom/senseonics/account/UserProfilePresenter$6;

    iget-object p1, p1, Lcom/senseonics/account/UserProfilePresenter$6;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {p1}, Lcom/senseonics/account/UserProfilePresenter;->-$$Nest$fgetmodel(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/account/UserAccountModel;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$6$1;->val$profileImageBase64Encoded:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/senseonics/account/UserAccountModel;->setProfileImage(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$6$1;->this$1:Lcom/senseonics/account/UserProfilePresenter$6;

    iget-object p1, p1, Lcom/senseonics/account/UserProfilePresenter$6;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {p1}, Lcom/senseonics/account/UserProfilePresenter;->-$$Nest$mdisplayProfile(Lcom/senseonics/account/UserProfilePresenter;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$6$1;->this$1:Lcom/senseonics/account/UserProfilePresenter$6;

    iget-object p1, p1, Lcom/senseonics/account/UserProfilePresenter$6;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/senseonics/account/UserProfilePresenter;->-$$Nest$monCallError(Lcom/senseonics/account/UserProfilePresenter;Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/UserProfilePresenter$6$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
